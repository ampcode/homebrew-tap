class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792615268-g38c005"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792615268-g38c005/amp-darwin-arm64"
      sha256 "da993031dfc053b25332503474c90ab5c0bd5a85c72c0d78be5e3b2a95fd6d5f"
    else
      url "https://static.ampcode.com/cli/0.0.1792615268-g38c005/amp-darwin-x64"
      sha256 "0f24671a6ccafd70f26f9f5bf3c3c8a05cd2ac1edf3a71dcad85b0b19fb259b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792615268-g38c005/amp-linux-arm64"
      sha256 "aee7afb14286453fb546a362309b4d347ab335df412b3061dd14731ab19299c0"
    else
      url "https://static.ampcode.com/cli/0.0.1792615268-g38c005/amp-linux-x64"
      sha256 "0f9ba8501482cea992c739a9ccd235f1ea13e2d6581684833aed9197fbd3af19"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
