class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793352886-g7ad87b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793352886-g7ad87b/amp-darwin-arm64"
      sha256 "07d4c1f84a1ba2c67a6153a71334c75b6f4fa31f851bbed4b763191fe0eef6e2"
    else
      url "https://static.ampcode.com/cli/0.0.1793352886-g7ad87b/amp-darwin-x64"
      sha256 "c3df9f1b276c4a71c033169b310dff94d299707a695f1a47613d263d719e1ee7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793352886-g7ad87b/amp-linux-arm64"
      sha256 "6e13b377e13242137d3c2f388aa915fb38bb472245e95da13d53a381eaae0a68"
    else
      url "https://static.ampcode.com/cli/0.0.1793352886-g7ad87b/amp-linux-x64"
      sha256 "f8af80c7e809161f93e9fe3d3e9489b768977685b51fd9b0bdcc9e2f9f442965"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
