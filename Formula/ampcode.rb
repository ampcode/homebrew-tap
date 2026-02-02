class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769990558-ge8c96c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769990558-ge8c96c/amp-darwin-arm64"
      sha256 "053885c5034631e572ba441f6df09ac7651470a000cad637450d65cad4204db7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769990558-ge8c96c/amp-darwin-x64"
      sha256 "b2e80dbe4f89db6d21a59e9a135355bccddd7a9b68d5cf94ce6dcd32668fe0d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769990558-ge8c96c/amp-linux-arm64"
      sha256 "f32948d14a185b232c09b365d1145b7968fc351f7446a725bc37bb6bd8ca5513"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769990558-ge8c96c/amp-linux-x64"
      sha256 "ed1f3c4471f431f2792601f6871d10531bf1d63dc0362147af6b04c72ae1f660"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
