class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788480095-g7685ce"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788480095-g7685ce/amp-darwin-arm64"
      sha256 "807c03bcd1baf9fd2779adb49aab1868d5a140949b8ca2e8b8bf025a4c2069d9"
    else
      url "https://static.ampcode.com/cli/0.0.1788480095-g7685ce/amp-darwin-x64"
      sha256 "e4b63749d6db00c6f8d7da7c252bbafd7ee44cfa2fa9cf6b47c7377c38e1e474"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788480095-g7685ce/amp-linux-arm64"
      sha256 "9e99f611ef8600c6c54cdc780440af37374b7c98a27ebad12b4a73ac1b4e1a01"
    else
      url "https://static.ampcode.com/cli/0.0.1788480095-g7685ce/amp-linux-x64"
      sha256 "81256913d12ebeeb602fabc4a20d3a20d4ee674ea4b641f5c9aa8848c8c832c5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
