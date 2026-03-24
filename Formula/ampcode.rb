class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774339849-g374434"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774339849-g374434/amp-darwin-arm64"
      sha256 "23825525a2b80fbcbc60e5890c383092d7124daea68ac323322b8157860d11c4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774339849-g374434/amp-darwin-x64"
      sha256 "39ed5d5d2ca0f5086e7f31d35f49eff4aaa2fa7ab74d73437782da6041969c6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774339849-g374434/amp-linux-arm64"
      sha256 "bc4ce7ceced6a40b3279546d99da8933ceb3c334aba9aa3c7d9fd8a261ea63dc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774339849-g374434/amp-linux-x64"
      sha256 "4203fc874cfabb935f4201f602c27ad114fe3e43742ffa2c66edc470d6653bb2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
