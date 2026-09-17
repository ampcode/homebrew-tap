class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789632037-gcf76ce"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789632037-gcf76ce/amp-darwin-arm64"
      sha256 "938447467279de925c0e9e65215a294451c3198ad6e72d8e5b0084d1534bd895"
    else
      url "https://static.ampcode.com/cli/0.0.1789632037-gcf76ce/amp-darwin-x64"
      sha256 "1d783e254edad41f2f949d15a51580df5e7bbb90e4f59b77c9d8b8844f1c725f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789632037-gcf76ce/amp-linux-arm64"
      sha256 "69cd14a76408d8c3330acb1fccd8a86df20aa6f590f4ae14693aa387f96688ab"
    else
      url "https://static.ampcode.com/cli/0.0.1789632037-gcf76ce/amp-linux-x64"
      sha256 "31259a56f7bed5b7f7f93ada2b62d76f2fa132bef576d09e6d9f9226a8d7250a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
