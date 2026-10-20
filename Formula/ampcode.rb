class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792497638-g7b4b42"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792497638-g7b4b42/amp-darwin-arm64"
      sha256 "b8c6868b5ef59196b8937cfb001d119d5fdf4ee251fb94324508afc1013499a5"
    else
      url "https://static.ampcode.com/cli/0.0.1792497638-g7b4b42/amp-darwin-x64"
      sha256 "b5bf8ffc893632e3aa44ae8d0b81d502c52eb0d04e384ef4f45845b0912b3701"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792497638-g7b4b42/amp-linux-arm64"
      sha256 "dd8c0a3f0dcd565d08f2230f5e36c3ebfbf378f6327b932e0665119812c2c5a9"
    else
      url "https://static.ampcode.com/cli/0.0.1792497638-g7b4b42/amp-linux-x64"
      sha256 "923a83ed024a937db7a3993d110a002f2bc92b83f1ed2a13a899bcffef8744ec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
