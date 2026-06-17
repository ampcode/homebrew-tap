class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781703197-g0309cc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781703197-g0309cc/amp-darwin-arm64"
      sha256 "a464fe7df48e4a85b45074895c7306722828e40ec94611fbfbc9b73cebadca9f"
    else
      url "https://static.ampcode.com/cli/0.0.1781703197-g0309cc/amp-darwin-x64"
      sha256 "397caaedb0fd3f26453fae6d810f2bdce73315a9097d46d75320146fca6e1f5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781703197-g0309cc/amp-linux-arm64"
      sha256 "cde6fd957efd75872b2e3536bed589407d4fea0b6ce3eb282158b34e82e8b0d8"
    else
      url "https://static.ampcode.com/cli/0.0.1781703197-g0309cc/amp-linux-x64"
      sha256 "95b8e4c48033c90904d92276dd27fe5a30c186e4edcc5813540cf38d1f20af88"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
