class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772654704-g8a92ca"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772654704-g8a92ca/amp-darwin-arm64"
      sha256 "382da4ae49c9d87dc41710c1a1cac5ea9bbd335776b107aa46cd66ef248cd283"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772654704-g8a92ca/amp-darwin-x64"
      sha256 "9d4e48ff0fd9d246c21f770964f9c054ad636b18b25accb3f046d92168e6fc8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772654704-g8a92ca/amp-linux-arm64"
      sha256 "4cb64462c71e15e2a93060b71c735af579fcfff77baf4fa74beffb18aa904f2f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772654704-g8a92ca/amp-linux-x64"
      sha256 "7bb5edbfb5df381de00f291518c0e5a7a748a817c6a65523631c90c6d69beda6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
