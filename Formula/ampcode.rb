class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770336135-g27c0ec"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770336135-g27c0ec/amp-darwin-arm64"
      sha256 "25297167cd7b693b3d7e1ba739c514e9701a5364d62c55f5272b0ec71130ab82"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770336135-g27c0ec/amp-darwin-x64"
      sha256 "aa5a0b1803edd560beb91ec65f4d6c3b718e85a11fa1293355060eea0a879aaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770336135-g27c0ec/amp-linux-arm64"
      sha256 "f664a319ab1280192459c865c7c24357b4a25513a63daeaf454ff8145ccfaa49"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770336135-g27c0ec/amp-linux-x64"
      sha256 "8e42dd6b6f70f257145d2abbb54031c016ca177ecb07bbf60876ef831a5039be"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
