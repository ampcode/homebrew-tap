class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1765209229-g3dbf76"

  url "https://registry.npmjs.org/@sourcegraph/amp/-/amp-#{version}.tgz"
  sha256 "7cc462224b45a1f8ec27ee367eec5f87d6dddbef39d0917b393ea6e2e96695bb"
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
