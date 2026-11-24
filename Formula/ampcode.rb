class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795507243-g81a840"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795507243-g81a840/amp-darwin-arm64"
      sha256 "1b1ec38224ddf6d4c827d18b37e2d1687e1e1766150378a5b05f0cd3cb79300b"
    else
      url "https://static.ampcode.com/cli/0.0.1795507243-g81a840/amp-darwin-x64"
      sha256 "a53489a73798ba2adf34c2b54800dc3c2c416aae24af91b9ac5283185b11afc0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795507243-g81a840/amp-linux-arm64"
      sha256 "75bf2be74eda1a60dbfe5da8814d83288dac9ca78d18a79804aaa753f04bf8e7"
    else
      url "https://static.ampcode.com/cli/0.0.1795507243-g81a840/amp-linux-x64"
      sha256 "283b36c9fa3ad1cd57bdc83acb77a73eef4d623a90ca7b8d706a005c8b1fe180"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
