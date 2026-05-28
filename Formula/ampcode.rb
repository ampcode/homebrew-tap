class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779989805-g5f1d04"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779989805-g5f1d04/amp-darwin-arm64"
      sha256 "2e2fd8e4c4467a7c09b771491b94b72e4b2e6dde859a5bd9da2f15d1bd531ed3"
    else
      url "https://static.ampcode.com/cli/0.0.1779989805-g5f1d04/amp-darwin-x64"
      sha256 "18293ec27d43f2516b398d580c1659aca3ed7beb427c49394fd2745e89e3a017"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779989805-g5f1d04/amp-linux-arm64"
      sha256 "55de1ea780edd72ba6e5feaf695f1848fc9c1d3ead9eed5925ed2b0a4e8bd37c"
    else
      url "https://static.ampcode.com/cli/0.0.1779989805-g5f1d04/amp-linux-x64"
      sha256 "54e7770fea2eb3813160fe0f8c15ef8e1774185c28aaf1ec168f33f5d4db0e04"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
