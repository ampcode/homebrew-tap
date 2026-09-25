class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790323276-g5efd7a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790323276-g5efd7a/amp-darwin-arm64"
      sha256 "f25a9ac4f332d71c2bbb0163b65e01eef615b6fb79dd8cd07c911c9e12c24ff8"
    else
      url "https://static.ampcode.com/cli/0.0.1790323276-g5efd7a/amp-darwin-x64"
      sha256 "e48af960cbf7c7647c2f0bd76b1e292bd4c544e5835918c5c278e73645a2397c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790323276-g5efd7a/amp-linux-arm64"
      sha256 "7ff9aa6e1940a2658785020470fcb34168b22d696c150d1811b2d612bfd9fdfb"
    else
      url "https://static.ampcode.com/cli/0.0.1790323276-g5efd7a/amp-linux-x64"
      sha256 "8c636158e4bd62b93eadcecae29935fbd62901f94be2abf301a60192a94f63f5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
