begin

  require "bundler"

  if ENV["BUNDLE_GEMFILE"].nil?
    path = Dir.pwd

    loop do
      gemfile = File.expand_path(File.join(path, "Gemfile"))

      if File.file? gemfile
        # Load the libraries specified in the Gemfile.
        ENV["BUNDLE_GEMFILE"] = gemfile
        break
      end

      next_path = File.expand_path(File.join(path, ".."))

      if path == next_path
        raise "quick-bundler could not find a Gemfile"
      end

      path = next_path
    end
  end

  Bundler.require if File.file? ENV["BUNDLE_GEMFILE"]

end
