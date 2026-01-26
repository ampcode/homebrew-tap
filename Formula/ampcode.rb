class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769443393-g205aa3"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769443393-g205aa3/amp-darwin-arm64"
      sha256 "5fdb683b94a9678a252325667d07c4d946efe312f7fa1cd8225d089f57c37d49"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769443393-g205aa3/amp-darwin-x64"
      sha256 "dccb9ab53e299ef5e5b21fc5271ffc25ef51cb2a81a9eaa1347b7bfe93544481"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769443393-g205aa3/amp-linux-arm64"
      sha256 "071e83b43f1d321bb83c1a6a1ffef9fe7d51b2c94710a3769dac71c86f1b4132"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769443393-g205aa3/amp-linux-x64"
      sha256 "57d9ec563a4806bd0dfd717535b23767b7cea70c60e21caee15d17b44ba9c8aa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
