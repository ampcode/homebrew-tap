class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1765328351-g76b865"

  url "https://registry.npmjs.org/@sourcegraph/amp/-/amp-#{version}.tgz"
  sha256 "b5b6274d8300c79c4e5369de062d48e409b5fca8922aaa8364715b74a7e61b55"
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
