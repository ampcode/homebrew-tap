class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782389619-g12029c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782389619-g12029c/amp-darwin-arm64"
      sha256 "f233f815dc9ea52943079b287f403133a2eec232241d2b4bbb7c3f3afb8f7852"
    else
      url "https://static.ampcode.com/cli/0.0.1782389619-g12029c/amp-darwin-x64"
      sha256 "6d213d613b5947891261245cd8dd3aa434a24d2010d1a14b9baa2145452c4fda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782389619-g12029c/amp-linux-arm64"
      sha256 "9fb5b0058d3cf46b9f30450734bc09d21ef33d6a973a6839ae97b81ef6d330b8"
    else
      url "https://static.ampcode.com/cli/0.0.1782389619-g12029c/amp-linux-x64"
      sha256 "58b9f83ffa2dc7e83c4e08850d6ca5f9bd5cf78f70d9494ec11c8b7428070817"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
