class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778948149-g015257"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778948149-g015257/amp-darwin-arm64"
      sha256 "dce0773ee0b1a512c9daec38ca8857b2198cb07a3d521f3f6c7870dc7c48e0a4"
    else
      url "https://static.ampcode.com/cli/0.0.1778948149-g015257/amp-darwin-x64"
      sha256 "cf773d09b1cfa0d695205c917fcc67f9b2cfbad0a5eea7ab52f62f6d23197e14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778948149-g015257/amp-linux-arm64"
      sha256 "befab4e006b69d95b2a16703baf74ea5a0192f0232426ca2ce0223896f0a07a7"
    else
      url "https://static.ampcode.com/cli/0.0.1778948149-g015257/amp-linux-x64"
      sha256 "42de14a7f18de9e4c95c2e85a0153ee7405ed62e2588a96c165e208b852362cc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
