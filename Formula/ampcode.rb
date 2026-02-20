class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771603678-gac9341"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771603678-gac9341/amp-darwin-arm64"
      sha256 "cec08283a98b5a368ec60d0e6a8c7f60617d484dbed5d35fbe97d75ba1f9482b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771603678-gac9341/amp-darwin-x64"
      sha256 "a9f28433ea4fd48db2e05c54dc5e5f0b307840d8f2ca7114b043ce36a1ac7e01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771603678-gac9341/amp-linux-arm64"
      sha256 "e2c08da5f0edadbaeba3121c44bf194a09d86ca2521700094a7d292d0a12d8ff"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771603678-gac9341/amp-linux-x64"
      sha256 "1006d862881dd4898d941e7dbe7522122751cf75fc7a0e7c83b2565266a23a27"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
