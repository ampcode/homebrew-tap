class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782981808-g7a9766"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782981808-g7a9766/amp-darwin-arm64"
      sha256 "cc4e818ac5f80ed6133d5398d5ad8326afe1416c8ec6c13ea125d30879d7a0cb"
    else
      url "https://static.ampcode.com/cli/0.0.1782981808-g7a9766/amp-darwin-x64"
      sha256 "a26db8a6e4eed3e5b78cc1636461163c7be7d0d9244e00185dbfffef3771ef6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782981808-g7a9766/amp-linux-arm64"
      sha256 "bfd35a056c97fabaa2807296e4671088077cf1184fdd4608fc7ab3335cbdc37a"
    else
      url "https://static.ampcode.com/cli/0.0.1782981808-g7a9766/amp-linux-x64"
      sha256 "b795c9625f93041f38a30f741bc07071f0775c07d8e17ef7a1f7c4cc1d9dd5bd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
