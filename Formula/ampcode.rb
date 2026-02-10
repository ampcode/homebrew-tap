class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770712907-gb4f554"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770712907-gb4f554/amp-darwin-arm64"
      sha256 "947e640362be6736123e9838ed6f752c4ea6ff99673f4d35a43072a8e9babb50"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770712907-gb4f554/amp-darwin-x64"
      sha256 "6fa6478a4f71d9ea4eb48457f445cec891264474fed594eb3e69d90981240ace"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770712907-gb4f554/amp-linux-arm64"
      sha256 "6b6763f52038ebf28680c4e1a6ce3eb7f7e572e4e961cd506e29492ac8ca1896"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770712907-gb4f554/amp-linux-x64"
      sha256 "9d1d25f56b12807752025fd54f9ae1dd7c04666dd407d262401b64a62cef6ea0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
