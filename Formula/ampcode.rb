class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773850785-g999f3a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773850785-g999f3a/amp-darwin-arm64"
      sha256 "6c8faa99ad92d3f30e4aa15041ce53cc6084ccba0483233cda91324bf4cc8c03"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773850785-g999f3a/amp-darwin-x64"
      sha256 "cbee541cd72e549bfa2f7a7eda6a391a0701f0c6e8c9578adbc8aff8eb5dd1e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773850785-g999f3a/amp-linux-arm64"
      sha256 "7dfb750a3e8186055f0685abc49b3808d45725eaab554b4cf8f333902345ea4b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773850785-g999f3a/amp-linux-x64"
      sha256 "bbbd3207e926d29d7df86d04c11396fca86a952d31fbbdfe47dcf790e02077d8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
