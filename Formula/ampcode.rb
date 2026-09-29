class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790718776-g48e450"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790718776-g48e450/amp-darwin-arm64"
      sha256 "a85af5e14994d81e4f3e6af9161dbdce28273f5d707455aa3b1405f9d0036ca0"
    else
      url "https://static.ampcode.com/cli/0.0.1790718776-g48e450/amp-darwin-x64"
      sha256 "10fb47f1172a13d8d80fb5f4bd6cac12dc84f5ac50240563a9972eff9fde64f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790718776-g48e450/amp-linux-arm64"
      sha256 "66398ad4fdeb6ee1098f0181c968abcbd8d0a093fa4a86221e849d67c9c45a21"
    else
      url "https://static.ampcode.com/cli/0.0.1790718776-g48e450/amp-linux-x64"
      sha256 "637c3dc213b2721a96bbf1730a33c20fe86b5eace89b15761ced19f3ac7d284b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
