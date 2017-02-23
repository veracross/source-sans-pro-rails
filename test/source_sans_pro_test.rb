require 'test_helper'

class SourceSansProTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test 'engine is loaded' do
    assert_equal ::Rails::Engine, SourceSansPro::Rails::Engine.superclass
  end

  test 'fonts are served' do
    get '/assets/sourcesanspro-regular.eot'
    assert_response :success

    get '/assets/sourcesanspro-regular.ttf'
    assert_response :success

    get '/assets/sourcesanspro-regular.woff'
    assert_response :success

    get '/assets/sourcesanspro-regular.woff2'
    assert_response :success

    get '/assets/sourcesanspro-regular.svg'
    assert_response :success
  end

  test 'stylesheets are served' do
    get '/assets/source-sans-pro.css'
    assert_source_sans_pro(response)

    %w(black bold extralight italic light regular semibold).each do |font_weight|
      get "/assets/source-sans-pro/#{font_weight}.css"
      assert_source_sans_pro(response)
    end
  end

  test 'stylesheets contain asset pipeline references to fonts' do
    get '/assets/source-sans-pro.css'
    assert_match %r{/assets/sourcesanspro-regular(-\w+)?\.eot}, response.body
    assert_match %r{/assets/sourcesanspro-regular(-\w+)?\.eot\?#iefix}, response.body
    assert_match %r{/assets/sourcesanspro-regular(-\w+)?\.woff}, response.body
    assert_match %r{/assets/sourcesanspro-regular(-\w+)?\.woff2}, response.body
    assert_match %r{/assets/sourcesanspro-regular(-\w+)?\.ttf},  response.body
    assert_match %r{/assets/sourcesanspro-regular(-\w+)?\.svg#sourcesanspro-regular}, response.body
  end

  test 'stylesheet is available in a css sprockets require' do
    get '/assets/sprockets-require.css'
    assert_source_sans_pro(response)
  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path('../dummy/tmp', __FILE__)
  end

  def assert_source_sans_pro(response)
    assert_response :success
    assert_match(/font-family:\s*'SourceSansPro';/, response.body)
  end
end
