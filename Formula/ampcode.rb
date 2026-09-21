class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790029976-g3fff2f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790029976-g3fff2f/amp-darwin-arm64"
      sha256 "6eabde95517519b2c6d0bc87985d51284e2bb3055c9a9c28e8805bbf1fecf1f5"
    else
      url "https://static.ampcode.com/cli/0.0.1790029976-g3fff2f/amp-darwin-x64"
      sha256 "d3f62c13e69dee241730be6dae5031ff4486db65776f085832084f156f272663"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790029976-g3fff2f/amp-linux-arm64"
      sha256 "cbee0766755286b6fd2849264edacaecbffa0419730f00414d9159737e70f4c2"
    else
      url "https://static.ampcode.com/cli/0.0.1790029976-g3fff2f/amp-linux-x64"
      sha256 "35b30b93903499ffe3fb85587d3705ba4a68dc67973f6a70b2bc8e0a443aa72d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
