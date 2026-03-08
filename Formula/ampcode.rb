class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772971294-gc33564"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772971294-gc33564/amp-darwin-arm64"
      sha256 "65dac7dbde6e8e40654efdc553d968490e794995d7d22862d25055a626ac9d49"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772971294-gc33564/amp-darwin-x64"
      sha256 "f9f90d1a88f4542e66b90bd0c0e28c30bb58ced604142eb09523b4f7bdb13406"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772971294-gc33564/amp-linux-arm64"
      sha256 "891499daf4c149d9cfd61eb6726e4bf1dbf93a00da5a0d808638b884a68bdc34"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772971294-gc33564/amp-linux-x64"
      sha256 "bb5d494a97db666870c47e16d7cae0336ce0e052c5d6d84f7c63466fcdc9b690"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
