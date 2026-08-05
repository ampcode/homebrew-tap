class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785889172-g5b1c43"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785889172-g5b1c43/amp-darwin-arm64"
      sha256 "ed677dfd41a4b1a4aab4ba3ded4bfc737ef51342d16ae48a6d0cac22283edd08"
    else
      url "https://static.ampcode.com/cli/0.0.1785889172-g5b1c43/amp-darwin-x64"
      sha256 "011e5c60e18a77512b58c49a425f16937a7f6d17fe3188bbf2506271c4c48abd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785889172-g5b1c43/amp-linux-arm64"
      sha256 "b12240bcd4db35a036f344d1986d215bc85f9cfecf9fbeba60f1827116bd7e5b"
    else
      url "https://static.ampcode.com/cli/0.0.1785889172-g5b1c43/amp-linux-x64"
      sha256 "7f6562ac946a21a069b70d17d6d91ac2c88bed857dcf27e389a9daaa633db9d7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
