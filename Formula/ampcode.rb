class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769155285-g3e80a2"

  url "https://registry.npmjs.org/@sourcegraph/amp/-/amp-#{version}.tgz"
  sha256 "54aa18a9867f86369f4db1a943261018a7f39a4375fa06a093e00048da24d780"
  license :cannot_represent

  livecheck do
    url "https://registry.npmjs.org/@sourcegraph/amp"
    regex(/"version":\s*"([^"]+)"/i)
  end

  depends_on "node@20"

  def install
    system "npm", "install", "--prefix", libexec, "."
    bin.install_symlink libexec/"node_modules/.bin/amp"
  end
end
