class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778216274-g1ee4bf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778216274-g1ee4bf/amp-darwin-arm64"
      sha256 "015db04cb33c961b2c1dddfaf9f40189ad9465ef997047a1a777d0e140e499c7"
    else
      url "https://static.ampcode.com/cli/0.0.1778216274-g1ee4bf/amp-darwin-x64"
      sha256 "42150e8aecb98953884a2edeef0be57f7d49429fa4c5f41029a59dbef7d662a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778216274-g1ee4bf/amp-linux-arm64"
      sha256 "e3e2e30b6c99d725ec8f58702111b91ad369a7ad2601dc53edaab387a8773324"
    else
      url "https://static.ampcode.com/cli/0.0.1778216274-g1ee4bf/amp-linux-x64"
      sha256 "77b76db0578cf63de3a9009be9c130baa6bdbbbeda117fe8b2a0fea7cecda4e2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
