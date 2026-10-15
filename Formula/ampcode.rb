class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792036844-g99022c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792036844-g99022c/amp-darwin-arm64"
      sha256 "7bf84a2e55d6fbef8884444aadac5453793e78732fde1f8c9537709d1ff354a3"
    else
      url "https://static.ampcode.com/cli/0.0.1792036844-g99022c/amp-darwin-x64"
      sha256 "04883251eabb1f35f96b7c397fa3b6c5c7a443d73be3235726548db7b55462c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792036844-g99022c/amp-linux-arm64"
      sha256 "7426af35ec22d591bc9b7d85f03a10dd8471dda88d026ed35ca8f069136ead9a"
    else
      url "https://static.ampcode.com/cli/0.0.1792036844-g99022c/amp-linux-x64"
      sha256 "81e07fb40a5662f4efc4205c9f5aeea539ec66017f4222dd2bff2db1b4b1b474"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
