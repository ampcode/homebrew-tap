class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787213307-gfdb578"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787213307-gfdb578/amp-darwin-arm64"
      sha256 "0524deb9c59983c043ea24e0688d9858e70a63d1374b5dfc7b93d81fde46d576"
    else
      url "https://static.ampcode.com/cli/0.0.1787213307-gfdb578/amp-darwin-x64"
      sha256 "bf43e4b2b9569de51d817ce7dace60882e440e17bac2f0b979155cc6cf9a5ee8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787213307-gfdb578/amp-linux-arm64"
      sha256 "1bdc8bf75bd65d84094e8463c251b6e714d2d28469d76c2e05c8aac60b56c363"
    else
      url "https://static.ampcode.com/cli/0.0.1787213307-gfdb578/amp-linux-x64"
      sha256 "39ec1a6aa8f256c418c46a8996505b37713c1dcb16a1c5cca90bca705080060d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
