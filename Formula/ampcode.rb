class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789893172-g244572"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789893172-g244572/amp-darwin-arm64"
      sha256 "ab85de4b7f1d3d2671be506da7b27ad39f961ad6248f658afd1b6d9a0d531cfc"
    else
      url "https://static.ampcode.com/cli/0.0.1789893172-g244572/amp-darwin-x64"
      sha256 "f95dfd2abcfe5b3948e66ef492c0d72d4a8d3dbe3edcddb6e10333ec3ed2d2a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789893172-g244572/amp-linux-arm64"
      sha256 "8b997153e6d4409f002c6534e1881a5f0fa666d1a0434bfc2d502dff19daea33"
    else
      url "https://static.ampcode.com/cli/0.0.1789893172-g244572/amp-linux-x64"
      sha256 "1e8f1a7160bbd27a14bf68cd5d8369f0575137aeca3b354d66c9026b5dbe48a0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
