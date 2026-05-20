class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779282840-g903e85"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779282840-g903e85/amp-darwin-arm64"
      sha256 "4c7e5ae06619cf21bf63aa54f8a9563812076cacbd77efda33ce0a4b260d9927"
    else
      url "https://static.ampcode.com/cli/0.0.1779282840-g903e85/amp-darwin-x64"
      sha256 "a6caeb9c5e3e66c561546850bec95077a1056926e4a2e9ff13db8f6e45551f82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779282840-g903e85/amp-linux-arm64"
      sha256 "eacde05e938568c613d89cd15fa714111a104eff7a02a8471668b0e2d7df7900"
    else
      url "https://static.ampcode.com/cli/0.0.1779282840-g903e85/amp-linux-x64"
      sha256 "4cbee5479d096dfc4571c5ddf1588290273a139a5b0ecce30fac5eaaa4b0f46a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
