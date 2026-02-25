class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772022876-ga1dd2c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772022876-ga1dd2c/amp-darwin-arm64"
      sha256 "5b980079130946b075129d124df72c6c9176c0a41f9e5cb1d4aa0d0c93ab3325"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772022876-ga1dd2c/amp-darwin-x64"
      sha256 "aeb7be5abccc237db05b638b47b5c13544167ebd51322f0acc118a03ae230c68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772022876-ga1dd2c/amp-linux-arm64"
      sha256 "2b5cded130dfad22334cf8740d99315093a4673c8e4a5165efc8a7d62325bc62"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772022876-ga1dd2c/amp-linux-x64"
      sha256 "3343bc496cbe6051db9a6c681b6d095acdea44e41fd5575cb0eda2e43641a9b0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
