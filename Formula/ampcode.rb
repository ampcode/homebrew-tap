class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1767985634-g701071"

  url "https://registry.npmjs.org/@sourcegraph/amp/-/amp-#{version}.tgz"
  sha256 "21ec48016025f430c7ee58d017fb5ea8a0645e55b4f8f0f9af34bddf802b9ee1"
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
