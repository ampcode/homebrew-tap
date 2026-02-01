class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769961749-g070849"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769961749-g070849/amp-darwin-arm64"
      sha256 "d463283152b28d255876395606a118f6470693185716b5ad0be345854f67f8c4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769961749-g070849/amp-darwin-x64"
      sha256 "529c6dff1cf3f1ddea48e708b44fa3c4ba993ff281c5a4158ebc749a2f325829"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769961749-g070849/amp-linux-arm64"
      sha256 "5f7d4e143a596359274ac2216d1c24e8baa82d9c56583e19c435c612e6c2313b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769961749-g070849/amp-linux-x64"
      sha256 "3490600e7950523c44f206ba5ce1829146c848fe141426425deeee25643facb8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
