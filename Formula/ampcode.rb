class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1768651300-g35f783"

  url "https://registry.npmjs.org/@sourcegraph/amp/-/amp-#{version}.tgz"
  sha256 "5d8a438c290df7cda2ea3445b9ca39220e63b111ee4df0f85e7d65b48e5521a0"
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
