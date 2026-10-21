class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792555249-g702cd1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792555249-g702cd1/amp-darwin-arm64"
      sha256 "f548ba7587ebf6cce8c0e34a467656ea7fb18dfd68d6d67ba072bbf525baa149"
    else
      url "https://static.ampcode.com/cli/0.0.1792555249-g702cd1/amp-darwin-x64"
      sha256 "9df3df888913e9debaa48e56216cb83cd99e902a04a408f0f817180d22c2c643"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792555249-g702cd1/amp-linux-arm64"
      sha256 "1d7a5580abe46b4edbf478bceebfac543bd1958588d8ef3ea535f8e61433425c"
    else
      url "https://static.ampcode.com/cli/0.0.1792555249-g702cd1/amp-linux-x64"
      sha256 "41a2e3680c63091d7c0293e2ad702af95772f9f35d977b74c7794fa40e45b5c9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
