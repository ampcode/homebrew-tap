class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772080323-g94625f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772080323-g94625f/amp-darwin-arm64"
      sha256 "fb0e2d00951a0bdfbcb90bc6f7e10688d7dc9c3ff7e868cde9f12a5686d9a180"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772080323-g94625f/amp-darwin-x64"
      sha256 "f099a28f19c7b16491971ce2885d87e0c47a89c602bd690315cbd7fc8f505365"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772080323-g94625f/amp-linux-arm64"
      sha256 "56cedcb9ec3a335f7fcdb06de8382beca65d5f9eac8f1263df23b8fc7c65f5da"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772080323-g94625f/amp-linux-x64"
      sha256 "dde8cf8c5ac1246d9ed1a461dc6a0a0721552f875c2a8e8acbe7c3c818a426c4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
