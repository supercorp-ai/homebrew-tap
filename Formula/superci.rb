# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.10.tgz"
      sha256 "11cc9012d720322a9e006e7fe013b6a1b0b7d6fae822fd899b8361d8fdc46d34"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.10.tgz"
      sha256 "e7ef9fb3feb5ef2dc66371cd918dd40f6592650c3d1d2fe9d76b92be49ed75a3"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.10.tgz"
      sha256 "7e75b95f27c63395ea9ae9c35f72a1a08c10f11796da1b66de88acbf36ec480f"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.10.tgz"
      sha256 "02da52281c508da985a828cde13b551ab59522415b21669dbbcf3890e7d2d38a"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
