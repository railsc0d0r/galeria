module EmberHelper
  # From https://github.com/thoughtbot/ember-cli-rails/issues/30#issuecomment-78183246
  def image_assets
    image_asset_dir = Rails.root.join('app', 'assets', 'images')

    assets = {}

    %w(.jpg .png .jpeg .gif .svg).each do |file_ext|
      Dir.glob(File.join(image_asset_dir, "**", "*#{file_ext}")).each do |absolute_path|
        file = absolute_path.sub(File.join(image_asset_dir, '/'), '')
        assets[file] = asset_url(file)
      end
    end

    assets
  end

  def galleria_assets
    javascript_asset_dir = Rails.root.join('vendor', 'assets', 'galleria', 'js')

    assets = {}

    %w(.js .erb).each do |file_ext|
      Dir.glob(File.join(javascript_asset_dir, "**", "*#{file_ext}")).each do |absolute_path|
        file = absolute_path.sub(File.join(javascript_asset_dir, '/'), '')
        file.gsub!('.erb','')
        assets[file] = asset_url(file)
      end
    end

    stylesheet_asset_dir = Rails.root.join('vendor', 'assets', 'galleria', 'css')

    %w(.scss).each do |file_ext|
      Dir.glob(File.join(stylesheet_asset_dir, "**", "*#{file_ext}")).each do |absolute_path|
        file = absolute_path.sub(File.join(stylesheet_asset_dir, '/'), '')
        assets[file] = asset_url(file)
      end
    end
    
    img_asset_dir = Rails.root.join('vendor', 'assets', 'galleria', 'img')

    %w(.png .gif).each do |file_ext|
      Dir.glob(File.join(img_asset_dir, "**", "*#{file_ext}")).each do |absolute_path|
        file = absolute_path.sub(File.join(img_asset_dir, '/'), '')
        assets[file] = asset_url(file)
      end
    end
    
    assets
  end
end
