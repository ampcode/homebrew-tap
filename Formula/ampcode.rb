class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772438887-gde79a7"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772438887-gde79a7/amp-darwin-arm64"
      sha256 "81724a4e96135e00030c4ca65bada9b6caceaf25964b583dbfccd3031d242ce2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772438887-gde79a7/amp-darwin-x64"
      sha256 "24a363b0925f1d095e80b3ec4632743a3cdd27fa0f270157513dabc1f6a73d9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772438887-gde79a7/amp-linux-arm64"
      sha256 "83d41b4b56ace7e7f0d5744d0e9e691f2e2b7c5779eb346f066c6530236f7977"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772438887-gde79a7/amp-linux-x64"
      sha256 "f0b042f5d5f8e5fff701ed2685fef20583419d6ee59775f9718d0731b3ee668e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
