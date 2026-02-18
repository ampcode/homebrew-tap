class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771395673-gae051f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771395673-gae051f/amp-darwin-arm64"
      sha256 "87c89cef17ebbae0ad683b87750ed30bd66d94e9e62b2658fadbef0a0522f00b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771395673-gae051f/amp-darwin-x64"
      sha256 "2aa3a77db60c0dd2546f0a9d6785aecf2bb9c46e213f762e62885a1689ab4117"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771395673-gae051f/amp-linux-arm64"
      sha256 "4ddfa8dabbb9f0cb73e3e5714859ec96cd81234634196a745f0da930ba0965b3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771395673-gae051f/amp-linux-x64"
      sha256 "42207f2298e73a33d7eb9ccbe77e21446b1874fa9e33960b480f47f89ed08d24"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
