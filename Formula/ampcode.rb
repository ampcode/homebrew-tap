class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783370115-gc6efb5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783370115-gc6efb5/amp-darwin-arm64"
      sha256 "440ad1dd5fc9a44a4cb1f7b94ee2b9fa0d5e8b04759c0db1f5789544ce52675a"
    else
      url "https://static.ampcode.com/cli/0.0.1783370115-gc6efb5/amp-darwin-x64"
      sha256 "42d25644314df917ee6dd18c722c839eafc4d6b5cd9db1776e5b25f566848d80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783370115-gc6efb5/amp-linux-arm64"
      sha256 "66b91188bc1308880f602e725d5b93f5efc9fe4f9222c55d30c1614c20c18830"
    else
      url "https://static.ampcode.com/cli/0.0.1783370115-gc6efb5/amp-linux-x64"
      sha256 "2ce971b4f33d480e1b02d3d61b0eeb5e750dffea4bc96c430a6146696d41e544"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
