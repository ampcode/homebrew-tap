class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785270250-gc20589"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785270250-gc20589/amp-darwin-arm64"
      sha256 "e017dcd6c66af7d220e068421bbd8d8b447b8c9602bc2995e1729352b73a3677"
    else
      url "https://static.ampcode.com/cli/0.0.1785270250-gc20589/amp-darwin-x64"
      sha256 "b046246bfd298a040fde083567769336a6e122e96a8cbd2880fcc5dc954cf021"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785270250-gc20589/amp-linux-arm64"
      sha256 "4b55f0bf137e6ec6a0cb10cad530af1e1fc7fdc352f0818e6d117c6008b8109f"
    else
      url "https://static.ampcode.com/cli/0.0.1785270250-gc20589/amp-linux-x64"
      sha256 "d57086940caf91c3de801756a494b0852c6c9b47f6bbcfdc6af06307b30074fc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
