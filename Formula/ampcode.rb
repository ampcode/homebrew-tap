class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771545850-gac1c48"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771545850-gac1c48/amp-darwin-arm64"
      sha256 "82408c0d1b06aa733c90b90ba17c2a31484222e601b6afb890089fe221b444db"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771545850-gac1c48/amp-darwin-x64"
      sha256 "648cb022d02ed22d573cae02d0f5fa1bd925189e1ba90489ed6f396d6d962568"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771545850-gac1c48/amp-linux-arm64"
      sha256 "de28fef4d4d2aec90f77094e59c2f3bff4e8bf58424ced96891e85e5e01c0274"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771545850-gac1c48/amp-linux-x64"
      sha256 "7c9c2c1bccea90b859c44913b2add6180609a2b306c492b767e9a2f20eaa61e9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
