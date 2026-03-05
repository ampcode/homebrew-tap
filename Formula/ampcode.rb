class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772698161-g732433"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772698161-g732433/amp-darwin-arm64"
      sha256 "d11305132fe96f543ad23ec913ddef850397206c2863dfc68472608b9d23c5cd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772698161-g732433/amp-darwin-x64"
      sha256 "ea2a80b277058ebcede1bfee9514a0602f67b181e001d09023e3480235f0a91b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772698161-g732433/amp-linux-arm64"
      sha256 "533eff675c07a4cbb9ed5363ccf6b66de8bbc69672a7e0d33c5312baf80150b0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772698161-g732433/amp-linux-x64"
      sha256 "edbffb9fe3b5338ae73e36f1969cf20b424067090c199ab8bc8c73422aa48d75"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
