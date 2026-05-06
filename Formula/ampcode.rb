class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778065976-gda423d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778065976-gda423d/amp-darwin-arm64"
      sha256 "eff72ef203d5c95aab4e5ce49f99ad726b93d1cb615646549d1985ba87ce3185"
    else
      url "https://static.ampcode.com/cli/0.0.1778065976-gda423d/amp-darwin-x64"
      sha256 "532db2fe0249e1f1d91074c7afd1f3664ee594753748e4ee5b09cb9a51bfc398"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778065976-gda423d/amp-linux-arm64"
      sha256 "78518411b6de21cb15b7e8193443c65dc07e3632e61b594c3dcf1508665fba37"
    else
      url "https://static.ampcode.com/cli/0.0.1778065976-gda423d/amp-linux-x64"
      sha256 "b5e7c6949de4fbd04bf4654910c4fd09ee4bb29c80e3ac2961bdfb54e896f469"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
