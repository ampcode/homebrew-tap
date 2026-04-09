class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775729936-ge4676e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775729936-ge4676e/amp-darwin-arm64"
      sha256 "4304d54131d5e24ffde86ed4971aeaae453c7b82a7ad569c60db01d482e8b8fc"
    else
      url "https://static.ampcode.com/cli/0.0.1775729936-ge4676e/amp-darwin-x64"
      sha256 "0e88cda2aef5ac22a8c5aadcf47f3c50ad93b9195b53df767edb410b413f1850"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775729936-ge4676e/amp-linux-arm64"
      sha256 "447a88b4b6f55dba9d9a2dc63b5c112e197a3b8dce8c06604d7a817674986b3e"
    else
      url "https://static.ampcode.com/cli/0.0.1775729936-ge4676e/amp-linux-x64"
      sha256 "2caf048ad244d08c2670c101e18c9f274164a906e7747f1f327b99c01b809dd1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
