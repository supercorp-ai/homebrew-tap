# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.21.tgz"
      sha256 "e72a20f85d686f2ad71022337718ebb635eb59cab148a586c4d1fd6de060a080"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.21.tgz"
      sha256 "8d1bba09392aa2b620f0a6b26a15c92eaa65a0808d8f692e901aa2dd47d9ccc6"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.21.tgz"
      sha256 "1e7e8916439cf15cc72601dc2e903c5a28a7b546a6164032af82ad4794fd85d6"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.21.tgz"
      sha256 "0e5a49b27362a74600b23860be8f7d6b9eb76e40778ceba856ae2f1dacc7299b"
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
