class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790625640-gdbe3f3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790625640-gdbe3f3/amp-darwin-arm64"
      sha256 "21a978ad95e6193019b93be41bc0cc414aa222386f43f31d77029a120def7165"
    else
      url "https://static.ampcode.com/cli/0.0.1790625640-gdbe3f3/amp-darwin-x64"
      sha256 "d57ad64e15eb45502c7d6804f7b1ad33ac27c203eaea60f5082d709d8c939d01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790625640-gdbe3f3/amp-linux-arm64"
      sha256 "d09cb19bcc05d92b2e3e4f8163a5ea2ede34bf8151375f33b6fb0bf4b9eee9b2"
    else
      url "https://static.ampcode.com/cli/0.0.1790625640-gdbe3f3/amp-linux-x64"
      sha256 "e69b5574b95ecdb3445efd91383890cf116b58f6acab7a27d06fca365d5c8aab"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
