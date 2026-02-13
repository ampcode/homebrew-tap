class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770973730-gd4127a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770973730-gd4127a/amp-darwin-arm64"
      sha256 "c2c08319d067f81c2f4c1b9c67b08ff61fbc2bf401d9c0272324d69c79b33776"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770973730-gd4127a/amp-darwin-x64"
      sha256 "5106554754ac02d6b4169058a9fd790a01f54a498723dea7fcd2276e4bc9f52d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770973730-gd4127a/amp-linux-arm64"
      sha256 "b6d2d3732d13e428a6e392acae96b9ccc242e79c2948b25b58bc3c6d6175ece3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770973730-gd4127a/amp-linux-x64"
      sha256 "aef76a6b77d4b281270ee67935601ae2778e516d4af1605c62cfc199e1fb72f8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
