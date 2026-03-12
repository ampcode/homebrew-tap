class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773317003-g248a19"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773317003-g248a19/amp-darwin-arm64"
      sha256 "25dbe982945009a26ceb4ec416fb85477f3057131ba37b8159c9e0dcfaaa68f3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773317003-g248a19/amp-darwin-x64"
      sha256 "f2c8e104ccfedc44839a4635bff7c42aa818cb9dffada0cd8384f7d8cf179e7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773317003-g248a19/amp-linux-arm64"
      sha256 "07965e462e702d7493cbfa4f2bcfed12ba90fd69bd66cfdb4490939366447be7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773317003-g248a19/amp-linux-x64"
      sha256 "44d30dd9317078cdd3a8714ac77405028258c575ac860b557285adc59e628f9a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
