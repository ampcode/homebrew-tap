class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772913690-g73f1a6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772913690-g73f1a6/amp-darwin-arm64"
      sha256 "835daa95680f33809c789daac218c3fef7a739dab61d7a72ffc0beaf37540d63"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772913690-g73f1a6/amp-darwin-x64"
      sha256 "1f3773c7ce1f3e6cff1d5e984c8922164f39b2338b905a3ac5be9e48c0d8b33c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772913690-g73f1a6/amp-linux-arm64"
      sha256 "3cfb35e7ab7ab4f650b03bde3970b3c0f8ae1b6cf0b0b7e1c0aac9552594586a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772913690-g73f1a6/amp-linux-x64"
      sha256 "621134dfd8f4a2e795aafbe884629df32a1201f183971ce3ed175f5105b543c7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
