class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780703129-g28d71e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780703129-g28d71e/amp-darwin-arm64"
      sha256 "6c2e6799f1e478760ef2e6dd6d9e0d29c026822365d8efa79d86d39d7f6c7996"
    else
      url "https://static.ampcode.com/cli/0.0.1780703129-g28d71e/amp-darwin-x64"
      sha256 "2984e3e7f58f0d6f668a26facdad90aa84b454c1df87ab35cb0319211408fc29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780703129-g28d71e/amp-linux-arm64"
      sha256 "2187784b8c2c4918df02ecced1b53b1c5d59c9d936bdd615d62ccd10b77ecee6"
    else
      url "https://static.ampcode.com/cli/0.0.1780703129-g28d71e/amp-linux-x64"
      sha256 "0d8715875ed6db2baecf6f964c7332e9512d7c77fece44bb21019f97ee9b50a6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
