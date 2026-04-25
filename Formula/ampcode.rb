class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777116343-g95d5aa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777116343-g95d5aa/amp-darwin-arm64"
      sha256 "83f464bfcd1b4af01cac00f18f66a77206ec7b54908f4f6a96ee35ef124dea57"
    else
      url "https://static.ampcode.com/cli/0.0.1777116343-g95d5aa/amp-darwin-x64"
      sha256 "2b30dadeef01d5a658833d1e56cffda0327f1e9ba26489a30fa5e42eaeed9742"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777116343-g95d5aa/amp-linux-arm64"
      sha256 "f3726d8b13046eddd567547489354934035f654305a840273ed3ccbfad18381a"
    else
      url "https://static.ampcode.com/cli/0.0.1777116343-g95d5aa/amp-linux-x64"
      sha256 "ddfde2546385989ddf391bd5858aa37c838e945492fab4eba453c6d2666befde"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
