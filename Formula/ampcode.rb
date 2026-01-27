class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769531025-g50c6da"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769531025-g50c6da/amp-darwin-arm64"
      sha256 "50bd317922c065df8021fc65d703fd1c75445d639936e0c4d3f8f24011173b1e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769531025-g50c6da/amp-darwin-x64"
      sha256 "82e093e7191d2be979d536d3e04fd72dd76917ca0e340bee3bd6c5e8808b62fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769531025-g50c6da/amp-linux-arm64"
      sha256 "64e648748da4e6371ae178dce704cbdc7065faea791b4e040660b227248b3e8c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769531025-g50c6da/amp-linux-x64"
      sha256 "5b9e11ea3dfb5e8a19b1eef0deb77e13b53e22abc7243a8106996c51b8d4ce91"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
