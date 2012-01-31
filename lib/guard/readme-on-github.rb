require 'guard'
require 'guard/guard'

require 'fileutils'
require 'rdiscount'

require File.expand_path('../../github-flavored-markdown', __FILE__)

module Guard
  class ReadmeOnGithub < Guard

    def this_dir
      File.expand_path('..', __FILE__)
    end

    def asset_dir
      File.join(this_dir, 'readme-on-github', 'assets')
    end

    def copy_assets
      %w[github.css github-logo.png github-logo-hover.png jquery.js github.js].each do |filename|
        FileUtils.cp "#{asset_dir}/#{filename}", "/tmp/#{filename}"
      end
    end

    def start
      copy_assets
      true
    end

    def run_all
      true
    end

    def run_on_change(paths)
      paths.each do |path|
        text = GithubFlavoredMarkdown.gfm(File.read(path))
        html = RDiscount.new(text).to_html
        github = File.read("#{asset_dir}/github.html")
        File.open('/tmp/markdown-preview.html', 'w') do |f|
          f.puts github.sub(/INSERT_BODY/, html)
        end
      end
      puts 'compiled markdown'
      true
    end
  end
end
