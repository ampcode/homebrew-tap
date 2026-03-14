class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773462612-g20fbe1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773462612-g20fbe1/amp-darwin-arm64"
      sha256 "0a37841038e153c7580e7e31247db83c4df99111e16e330cee9415a5d336c18a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773462612-g20fbe1/amp-darwin-x64"
      sha256 "1a49fcd0b4fc7e4db87799b5ec1cfd825ecaff0ca66e88e100b792b5ad631a8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773462612-g20fbe1/amp-linux-arm64"
      sha256 "650a19f37c75a05d14a77fffdfd7bfd23f0e38b1bda38eee005e5c0bbcfb8c0d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773462612-g20fbe1/amp-linux-x64"
      sha256 "3749d886c7c599636c19d8dd9d4889739914f3ec424433bbc3fd6a71df8518e4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
